SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 3
AND u.Views <= 3559
AND u.DownVotes >= 42
AND c.CreationDate >= 1237
AND c.CreationDate <= 1428
AND u.CreationDate <= 1052

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;