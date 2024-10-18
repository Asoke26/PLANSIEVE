SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 2
AND u.Views <= 261
AND u.DownVotes >= 41
AND c.CreationDate >= 435
AND c.CreationDate <= 1181
AND u.CreationDate <= 1138

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;