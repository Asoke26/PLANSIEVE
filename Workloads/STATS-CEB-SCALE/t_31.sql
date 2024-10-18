SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views>=0
AND u.Views<=783
AND u.DownVotes>=0
AND u.DownVotes<=1
AND u.UpVotes<=123
AND c.CreationDate>=51
AND c.CreationDate<=1544
AND ph.CreationDate>=293
AND ph.CreationDate<=1517
AND v.CreationDate>=34
AND v.CreationDate<=1543

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;