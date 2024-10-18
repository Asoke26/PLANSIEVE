SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 9
AND u.Views <= 321
AND u.DownVotes >= 31
AND c.CreationDate >= 476
AND c.CreationDate <= 852
AND u.CreationDate <= 560

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;