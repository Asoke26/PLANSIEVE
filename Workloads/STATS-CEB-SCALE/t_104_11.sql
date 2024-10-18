SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 4
AND u.Views <= 2342
AND u.DownVotes >= 41
AND c.CreationDate >= 101
AND c.CreationDate <= 1059
AND u.CreationDate <= 750

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;