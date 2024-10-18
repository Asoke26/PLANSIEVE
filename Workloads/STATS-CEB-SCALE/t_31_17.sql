SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 57
AND u.Views <= 653
AND u.DownVotes >= 9
AND u.DownVotes <= 131
AND u.UpVotes <= 116
AND c.CreationDate >= 138
AND c.CreationDate <= 978
AND ph.CreationDate >= 601
AND ph.CreationDate <= 954
AND v.CreationDate >= 95
AND v.CreationDate <= 1459

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;